.class public Lcn/nubia/camera/o/c$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/c;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcn/nubia/camera/o/c$b;->a:Lcn/nubia/camera/o/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 685
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/o/c$b;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->m(Lcn/nubia/camera/o/c;)V

    :goto_0
    return-void
.end method
