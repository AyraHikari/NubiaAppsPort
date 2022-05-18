.class Lcn/nubia/video/player/common/PlayerManager$Helper$1;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/common/PlayerManager$Helper;->checkFile()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/common/PlayerManager$Helper;

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$videoExtractor:Landroid/media/MediaExtractor;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/common/PlayerManager$Helper;Landroid/media/MediaExtractor;Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcn/nubia/video/player/common/PlayerManager$Helper$1;->this$0:Lcn/nubia/video/player/common/PlayerManager$Helper;

    iput-object p2, p0, Lcn/nubia/video/player/common/PlayerManager$Helper$1;->val$videoExtractor:Landroid/media/MediaExtractor;

    iput-object p3, p0, Lcn/nubia/video/player/common/PlayerManager$Helper$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcn/nubia/video/player/common/PlayerManager$Helper$1;->val$videoExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcn/nubia/video/player/common/PlayerManager$Helper$1;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcn/nubia/video/player/common/PlayerManager$Helper$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
