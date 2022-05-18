.class Lcom/GifEncoder/GifMakeActivity$t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->M(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    const v0, 0x7f050042

    const v1, 0x7f050043

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->M(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->N(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->g(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    const/4 p2, 0x5

    :goto_0
    invoke-static {p1, p2}, Lcom/GifEncoder/GifMakeActivity;->i(Lcom/GifEncoder/GifMakeActivity;I)I

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->N(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->M(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->N(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->g(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    const/16 p2, 0xf

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->g(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->M(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->N(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->g(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    const/16 p2, 0x1e

    goto/16 :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->j(Lcom/GifEncoder/GifMakeActivity;)Lcom/GifEncoder/LooperShowView;

    move-result-object p1

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$t;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p2}, Lcom/GifEncoder/GifMakeActivity;->h(Lcom/GifEncoder/GifMakeActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/GifEncoder/LooperShowView;->setFps(I)V

    return-void
.end method
