.class Lcn/nubia/video/mediaeditorview/simpleeditor/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/simpleeditor/i;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->B(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->y(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->z(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/i$b;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/i;

    invoke-static {v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/i;->A(Lcn/nubia/video/mediaeditorview/simpleeditor/i;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleTimeLineView;->l(IIILjava/util/ArrayList;)V

    return-void
.end method
