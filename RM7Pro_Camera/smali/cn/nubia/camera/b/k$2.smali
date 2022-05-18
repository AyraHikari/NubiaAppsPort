.class Lcn/nubia/camera/b/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/b/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/b/k;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcn/nubia/camera/b/k$2;->a:Lcn/nubia/camera/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/b/k$2;->a:Lcn/nubia/camera/b/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;J)J

    return-void
.end method
