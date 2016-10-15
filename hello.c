#include <linux/init.h>
#include <linux/module.h>

static int hello_init(void)
{
	printk("hello,world\n");
	return 0;
}

static void hello_exit(void)
{
	printk("goodbye\n");
}

module_init(hello_init);
module_exit(hello_exit);
