.class Lcn/nubia/camera/ao/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/g;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcn/nubia/camera/ao/g$3;->a:Lcn/nubia/camera/ao/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/ao/g$3;->a:Lcn/nubia/camera/ao/g;

    invoke-static {v0}, Lcn/nubia/camera/ao/g;->d(Lcn/nubia/camera/ao/g;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/ao/g$3;->a:Lcn/nubia/camera/ao/g;

    invoke-static {v0}, Lcn/nubia/camera/ao/g;->d(Lcn/nubia/camera/ao/g;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/aj/i;->a()V

    :cond_0
    return-void
.end method
