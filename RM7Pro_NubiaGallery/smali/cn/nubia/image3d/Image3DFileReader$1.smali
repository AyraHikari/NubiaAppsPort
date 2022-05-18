.class Lcn/nubia/image3d/Image3DFileReader$1;
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

    .line 145
    iput-object p1, p0, Lcn/nubia/image3d/Image3DFileReader$1;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/nubia/image3d/Image3DFileReader$1;->this$0:Lcn/nubia/image3d/Image3DFileReader;

    invoke-static {v0}, Lcn/nubia/image3d/Image3DFileReader;->access$000(Lcn/nubia/image3d/Image3DFileReader;)V

    return-void
.end method
