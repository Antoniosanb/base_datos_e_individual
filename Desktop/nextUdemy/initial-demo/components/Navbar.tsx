
import ActiveLink  from "./ActiveLink"
import styles from "./Navbar.module.css"

 export const menuItems = [
    {
        text: 'Home',
        href: '/'
    },
    {
        text: 'About',
        href: '/about'
    },
    {
        text: 'Contact',
        href: '/contact'
    },
    {
        text: 'Pricing',
        href: '/pricing'
    },
];

export const Navbar = () => {

    return (
        <nav className={ styles.menuContainer }>
            {menuItems.map(( { href, text } ) => {
                return (
                    <ActiveLink href={`${href}`} text={`${text}`} />
                )
            })}
        </nav>
    )
}