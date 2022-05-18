.class Lcn/nubia/video/player/MovieSnapshot$2$2;
.super Ljava/lang/Object;
.source "MovieSnapshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/MovieSnapshot$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/video/player/MovieSnapshot$2;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/MovieSnapshot$2;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcn/nubia/video/player/MovieSnapshot$2$2;->this$1:Lcn/nubia/video/player/MovieSnapshot$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcn/nubia/video/player/MovieSnapshot$2$2;->this$1:Lcn/nubia/video/player/MovieSnapshot$2;

    iget-object v0, v0, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-static {v0}, Lcn/nubia/video/player/MovieSnapshot;->access$800(Lcn/nubia/video/player/MovieSnapshot;)V

    return-void
.end method
