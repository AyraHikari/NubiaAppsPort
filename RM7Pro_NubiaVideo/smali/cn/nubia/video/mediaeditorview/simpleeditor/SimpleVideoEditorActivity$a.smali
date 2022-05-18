.class Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x12

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity$a;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->f(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;)Lcn/nubia/video/mediaeditorview/simpleeditor/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->x(I)V

    :cond_0
    return-void
.end method
