.class Lcn/nubia/camera/a/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/a;->ai()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcn/nubia/camera/a/a$7;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 921
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/DCIM/Camera"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
