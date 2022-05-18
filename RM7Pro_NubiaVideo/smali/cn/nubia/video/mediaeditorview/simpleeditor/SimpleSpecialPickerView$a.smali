.class Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$a;
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
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;

    move-result-object v0

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    aget-object p1, v1, p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;->i(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method
