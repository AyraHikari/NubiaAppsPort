.class Lcom/GifEncoder/GifMakeActivity$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GifEncoder/GifMakeActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/GifMakeActivity;


# direct methods
.method constructor <init>(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->I(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->I(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->J(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->J(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$r;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->K(Lcom/GifEncoder/GifMakeActivity;)V

    return-void
.end method
