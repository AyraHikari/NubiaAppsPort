.class public Lcn/nubia/k/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/k/a/b$a;
    }
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Lcn/nubia/k/b/d;

.field public c:Lcn/nubia/k/a/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    .line 20
    iput-object v0, p0, Lcn/nubia/k/a/b;->b:Lcn/nubia/k/b/d;

    .line 21
    sget-object v0, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    iput-object v0, p0, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    return-void
.end method
