.class Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;

.field final synthetic b:I

.field final synthetic c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;

    iput p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->b:I

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)[I

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 2
    :goto_0
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->b(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->b(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;

    move-result-object p1

    sget-object v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->f:[Ljava/lang/String;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;->b:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;->q(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
