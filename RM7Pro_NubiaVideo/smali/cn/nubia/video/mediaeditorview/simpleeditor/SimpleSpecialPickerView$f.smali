.class public Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;


# direct methods
.method public constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->a:Z

    return-void
.end method

.method public constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;Landroid/content/Context;Z)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    .line 5
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    iput-boolean p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->a:Z

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->d(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->d(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->e(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->e(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v3}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->e(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;->b:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->e(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method
