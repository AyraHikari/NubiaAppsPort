.class Lcn/nubia/music/repository/MusicRepository$a;
.super Lcn/nubia/music/repository/a;
.source "MusicRepository.java"

# interfaces
.implements Lcn/nubia/music/database/AccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/repository/MusicRepository;
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
.field final synthetic a:Lcn/nubia/music/repository/MusicRepository;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/MusicRepository;Lcn/nubia/music/repository/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/music/repository/MusicRepository$a;->a:Lcn/nubia/music/repository/MusicRepository;

    .line 66
    invoke-direct {p0, p2}, Lcn/nubia/music/repository/a;-><init>(Lcn/nubia/music/repository/Subscriber;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onAccessFail(Lcn/nubia/music/database/AccessError;)V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcn/nubia/music/repository/MusicRepository$a;->onError(Ljava/lang/Exception;)V

    .line 78
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
    .line 71
    invoke-virtual {p0, p1}, Lcn/nubia/music/repository/MusicRepository$a;->onComplete(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
