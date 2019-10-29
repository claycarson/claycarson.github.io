document.body.style.backgroundColor = sessionStorage.getItem('bg');
document.body.style.color = sessionStorage.getItem('cc');
function theme() {
     if ( sessionStorage.getItem('bg') === '#F4F4F4') {
         
            sessionStorage.setItem('bg', '#1E2125');
            sessionStorage.setItem('cc', '#F4F4F4');
            
         
     }
    else if (sessionStorage.getItem('bg') == null || undefined) {
        sessionStorage.setItem('bg', 'rgb(6, 23, 37)');
        sessionStorage.setItem('cc', '#777');
        
    }
    else if( sessionStorage.getItem('bg') === 'rgb(6, 23, 37)') {
        
        sessionStorage.setItem('bg', 'rgb(255, 255, 255)');
        sessionStorage.setItem('cc', '#333');
        
  
    }

document.body.style.backgroundColor = sessionStorage.getItem('bg');
document.body.style.color = sessionStorage.getItem('cc');

}


