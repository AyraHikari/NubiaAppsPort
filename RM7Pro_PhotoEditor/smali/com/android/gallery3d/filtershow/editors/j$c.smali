.class Lcom/android/gallery3d/filtershow/editors/j$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/editors/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/j;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/j;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/editors/j;->l0(I)V

    goto/16 :goto_2

    :sswitch_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/editors/j;->l0(I)V

    goto/16 :goto_2

    :sswitch_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/editors/j;->l0(I)V

    goto/16 :goto_2

    :sswitch_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/imageshow/l;->setDrawShapeMode(I)V

    goto :goto_0

    :sswitch_4
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->setDrawShapeMode(I)V

    goto :goto_0

    :sswitch_5
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/imageshow/l;->setDrawShapeMode(I)V

    goto :goto_0

    :sswitch_6
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/imageshow/l;->setDrawShapeMode(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/j;->X(Lcom/android/gallery3d/filtershow/editors/j;)V

    goto/16 :goto_2

    :sswitch_7
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/editors/j;->l0(I)V

    goto/16 :goto_2

    :sswitch_8
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/j;->b0()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/gallery3d/filtershow/utils/b;->o(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/j;->S(Lcom/android/gallery3d/filtershow/editors/j;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/j;->U(Lcom/android/gallery3d/filtershow/editors/j;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1, v3}, Lcom/android/gallery3d/filtershow/editors/j;->T(Lcom/android/gallery3d/filtershow/editors/j;Z)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/j;->W(Lcom/android/gallery3d/filtershow/editors/j;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/imageshow/l;->setEraseMode(Z)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/j;->U(Lcom/android/gallery3d/filtershow/editors/j;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/editors/j;->T(Lcom/android/gallery3d/filtershow/editors/j;Z)Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/j;->V(Lcom/android/gallery3d/filtershow/editors/j;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->setEraseMode(Z)V

    goto :goto_2

    :sswitch_9
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/l;->S()V

    goto :goto_1

    :sswitch_a
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/l;->R()V

    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$c;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/j;->r0()V

    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0800f6 -> :sswitch_a
        0x7f0800f7 -> :sswitch_9
        0x7f0800f9 -> :sswitch_a
        0x7f0800fa -> :sswitch_9
        0x7f08013c -> :sswitch_8
        0x7f080154 -> :sswitch_7
        0x7f080166 -> :sswitch_6
        0x7f080167 -> :sswitch_5
        0x7f080168 -> :sswitch_4
        0x7f080169 -> :sswitch_3
        0x7f0801ee -> :sswitch_2
        0x7f080268 -> :sswitch_1
        0x7f08027b -> :sswitch_0
    .end sparse-switch
.end method
