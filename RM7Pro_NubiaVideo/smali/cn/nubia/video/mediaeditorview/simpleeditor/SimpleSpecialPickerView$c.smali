.class Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$c;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$c;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$c;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->b(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$c;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;

    move-result-object p2

    sget-object v0, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    aget-object p1, v0, p1

    invoke-interface {p2, p1, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;->i(Ljava/lang/String;Z)Z

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$c;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {p1, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->c(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;Z)Z

    :cond_1
    return v1
.end method
