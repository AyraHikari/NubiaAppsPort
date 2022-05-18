.class Lcn/nubia/camera/bb/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/b;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/bb/b$1;->a:Lcn/nubia/camera/bb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcn/nubia/camera/bb/b$1;->a:Lcn/nubia/camera/bb/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/b;Z)Z

    .line 101
    iget-object p1, p0, Lcn/nubia/camera/bb/b$1;->a:Lcn/nubia/camera/bb/b;

    invoke-static {p1}, Lcn/nubia/camera/bb/b;->a(Lcn/nubia/camera/bb/b;)V

    return-void
.end method
