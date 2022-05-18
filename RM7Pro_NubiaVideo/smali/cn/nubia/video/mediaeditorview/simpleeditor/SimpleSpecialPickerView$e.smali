.class Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;

.field final synthetic b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;

    move-result-object v1

    sget-object v2, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    aget-object p1, v2, p1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;->i(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    return-void
.end method
