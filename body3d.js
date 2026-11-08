/* Figura 3D (modelo muscular, sin distinción de sexo en la interacción). Carga diferida. */
import * as THREE from 'three';
import {GLTFLoader} from 'three/addons/loaders/GLTFLoader.js';
import {MeshoptDecoder} from 'three/addons/libs/meshopt_decoder.module.js';
const VW=1.3,VT=1.87,VH=1.9; // ventana ortográfica (m): ancho, techo, alto
let r,sc,cam,model,canvas,host,ready=false;
export function init(){
 return new Promise((ok,ko)=>{try{
  canvas=document.createElement('canvas');canvas.id='b3canvas';
  r=new THREE.WebGLRenderer({canvas,antialias:true,alpha:true});r.setClearColor(0,0);
  sc=new THREE.Scene();sc.add(new THREE.HemisphereLight(0xffffff,0x8a8a8a,1.7));
  const dl=new THREE.DirectionalLight(0xffffff,1.4);dl.position.set(1,2,3);sc.add(dl);
  cam=new THREE.OrthographicCamera(-VW/2,VW/2,VT,VT-VH,.1,10);cam.position.set(0,0,4);
  const l=new GLTFLoader();l.setMeshoptDecoder(MeshoptDecoder);
  l.load('./models/cuerpo.glb',g=>{model=g.scene;sc.add(model);ready=true;ok()},undefined,e=>ko(e));
 }catch(e){ko(e)}})}
export function attach(h){host=h;if(!ready||!h)return;if(canvas.parentNode!==h)h.insertBefore(canvas,h.firstChild);size()}
function size(){if(!host)return;const w=host.clientWidth||260,h=Math.round(w*VH/VW);r.setPixelRatio(Math.min(devicePixelRatio||1,2));r.setSize(w,h,false);canvas.style.width=w+'px';canvas.style.height=h+'px';host.style.height=h+'px'}
export function draw(angDeg){if(!ready||!host)return;const a=angDeg*Math.PI/180,c=Math.cos(a),s=Math.sin(a);
 if(host.clientWidth&&Math.abs(canvas.clientWidth-host.clientWidth)>1)size();
 model.rotation.y=a;r.render(sc,cam);
 const w=host.clientWidth,h=host.clientHeight;
 host.querySelectorAll('.mk').forEach(m=>{const x=+m.dataset.x,y=+m.dataset.y,z=+m.dataset.z,xr=x*c+z*s,zr=-x*s+z*c;
  m.style.left=((xr+VW/2)/VW*w)+'px';m.style.top=((VT-y)/VH*h)+'px';
  const fo=m.dataset.front=='1';m.style.visibility=fo&&c<.2?'hidden':'visible'})}
