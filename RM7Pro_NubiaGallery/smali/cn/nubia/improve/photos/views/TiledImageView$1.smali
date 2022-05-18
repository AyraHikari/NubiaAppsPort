.class Lcn/nubia/improve/photos/views/TiledImageView$1;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/photos/views/TiledImageView;


# direct methods
.method constructor <init>(Lcn/nubia/improve/photos/views/TiledImageView;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView$1;->this$0:Lcn/nubia/improve/photos/views/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView$1;->this$0:Lcn/nubia/improve/photos/views/TiledImageView;

    iget-object v0, v0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-virtual {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->freeTextures()V

    return-void
.end method
