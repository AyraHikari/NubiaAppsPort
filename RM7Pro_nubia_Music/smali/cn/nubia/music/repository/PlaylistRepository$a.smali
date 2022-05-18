.class Lcn/nubia/music/repository/PlaylistRepository$a;
.super Lcn/nubia/music/repository/a;
.source "PlaylistRepository.java"

# interfaces
.implements Lcn/nubia/music/database/AccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/repository/PlaylistRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/nubia/music/repository/a",
        "<TT;>;",
        "Lcn/nubia/music/database/AccessListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/repository/PlaylistRepository;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcn/nubia/music/repository/PlaylistRepository$a;->a:Lcn/nubia/music/repository/PlaylistRepository;

    .line 124
    invoke-direct {p0, p2}, Lcn/nubia/music/repository/a;-><init>(Lcn/nubia/music/repository/Subscriber;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onAccessFail(Lcn/nubia/music/database/AccessError;)V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcn/nubia/music/repository/PlaylistRepository$a;->onError(Ljava/lang/Exception;)V

    .line 136
    return-void
.end method

.method public onAccessSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcn/nubia/music/repository/PlaylistRepository$a;->onComplete(Ljava/lang/Object;)V

    .line 130
    return-void
.end method
