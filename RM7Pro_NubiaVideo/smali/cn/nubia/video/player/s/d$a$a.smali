.class Lcn/nubia/video/player/s/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/s/d$a;->a()I
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
.field final synthetic a:Landroid/media/MediaExtractor;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/s/d$a;Landroid/media/MediaExtractor;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/nubia/video/player/s/d$a$a;->a:Landroid/media/MediaExtractor;

    iput-object p3, p0, Lcn/nubia/video/player/s/d$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/d$a$a;->a:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcn/nubia/video/player/s/d$a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/player/s/d$a$a;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
