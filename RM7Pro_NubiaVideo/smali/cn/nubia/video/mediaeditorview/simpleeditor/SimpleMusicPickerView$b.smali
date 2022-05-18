.class public Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;


# direct methods
.method public constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
