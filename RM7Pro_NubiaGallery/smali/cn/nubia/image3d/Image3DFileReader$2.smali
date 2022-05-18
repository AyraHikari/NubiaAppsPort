.class Lcn/nubia/image3d/Image3DFileReader$2;
.super Ljava/lang/Object;
.source "Image3DFileReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/image3d/Image3DFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/image3d/Image3DFileReader;


# direct methods
.method constructor <init>(Lcn/nubia/image3d/Image3DFileReader;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$100(Lcn/nubia/image3d/Image3DFileReader;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v1}, Lcn/nubia/image3d/Image3DFileReader;->access$200(Lcn/nubia/image3d/Image3DFileReader;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$100(Lcn/nubia/image3d/Image3DFileReader;)I

    move-result v0

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v1}, Lcn/nubia/image3d/Image3DFileReader;->access$200(Lcn/nubia/image3d/Image3DFileReader;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$100(Lcn/nubia/image3d/Image3DFileReader;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/image3d/Image3DFileReader;->access$302(Lcn/nubia/image3d/Image3DFileReader;I)I

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$200(Lcn/nubia/image3d/Image3DFileReader;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v2}, Lcn/nubia/image3d/Image3DFileReader;->access$100(Lcn/nubia/image3d/Image3DFileReader;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v3}, Lcn/nubia/image3d/Image3DFileReader;->access$200(Lcn/nubia/image3d/Image3DFileReader;)I

    move-result v3

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/image3d/Image3DFileReader;->access$302(Lcn/nubia/image3d/Image3DFileReader;I)I

    .line 243
    :goto_0
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$300(Lcn/nubia/image3d/Image3DFileReader;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/image3d/Image3DFileReader;->seekTo(I)V

    .line 244
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$108(Lcn/nubia/image3d/Image3DFileReader;)I

    .line 245
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$500(Lcn/nubia/image3d/Image3DFileReader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v1}, Lcn/nubia/image3d/Image3DFileReader;->access$400(Lcn/nubia/image3d/Image3DFileReader;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 247
    :cond_1
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$600(Lcn/nubia/image3d/Image3DFileReader;)Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$2;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$600(Lcn/nubia/image3d/Image3DFileReader;)Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/image3d/Image3DFileReader$Image3dStatusListener;->onDisplayActionComplete()V

    :cond_2
    :goto_1
    return-void
.end method
