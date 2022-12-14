export const goToSection = (sectionName: string) => {
   let offsetTop: number = 0
   if (sectionName !== '/') {
      const section = document.querySelector(`[data-section="${sectionName}"]`) as Element
      offsetTop = section.getBoundingClientRect().top + window.scrollY - 80
   }

   window.scrollTo({
      behavior: 'smooth',
      top: offsetTop,
   })
   // console.log(sectionName)
}

export const convertToSlug = (text: string) => {
   return text
      .toLowerCase()
      .replace(/ /g, '-')
      .replace(/[^\w-]+/g, '')
}

