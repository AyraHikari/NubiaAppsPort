.class Lcn/nubia/camera/ag/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ag/c$1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ag/c$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ag/c$1;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/camera/ag/c$1$1;->a:Lcn/nubia/camera/ag/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/ag/c$1$1;->a:Lcn/nubia/camera/ag/c$1;

    iget-object v0, v0, Lcn/nubia/camera/ag/c$1;->a:Lcn/nubia/camera/ag/c;

    invoke-static {v0}, Lcn/nubia/camera/ag/c;->b(Lcn/nubia/camera/ag/c;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/aj/i;->b()V

    return-void
.end method
