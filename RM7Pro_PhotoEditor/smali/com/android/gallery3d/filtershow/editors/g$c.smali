.class Lcom/android/gallery3d/filtershow/editors/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/g;->p(Landroid/widget/LinearLayout;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/g;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/g$c;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/editors/g$c;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$c;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/g$c;->a:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/g$c;->b:Landroid/widget/LinearLayout;

    if-nez p1, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
