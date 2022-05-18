.class Lcn/nubia/music/repository/AlbumRepository$a;
.super Lcn/nubia/music/repository/a;
.source "AlbumRepository.java"

# interfaces
.implements Lcn/nubia/music/database/AccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/repository/AlbumRepository;
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
.field final synthetic a:Lcn/nubia/music/repository/AlbumRepository;


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/AlbumRepository;Lcn/nubia/music/repository/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcn/nubia/music/repository/AlbumRepository$a;->a:Lcn/nubia/music/repository/AlbumRepository;

    .line 79
    invoke-direct {p0, p2}, Lcn/nubia/music/repository/a;-><init>(Lcn/nubia/music/repository/Subscriber;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onAccessFail(Lcn/nubia/music/database/AccessError;)V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcn/nubia/music/repository/AlbumRepository$a;->onError(Ljava/lang/Exception;)V

    .line 91
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
    .line 84
    invoke-virtual {p0, p1}, Lcn/nubia/music/repository/AlbumRepository$a;->onComplete(Ljava/lang/Object;)V

    .line 85
    return-void
.end method
