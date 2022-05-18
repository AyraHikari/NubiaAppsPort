.class public Lcn/nubia/k/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/k/b/e;


# instance fields
.field private a:Lcn/nubia/k/a/a;


# direct methods
.method public constructor <init>(Lcn/nubia/k/a/a;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/k/b/g;->a:Lcn/nubia/k/a/a;

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/k/a/b;
    .locals 1

    .line 20
    iget-object v0, p0, Lcn/nubia/k/b/g;->a:Lcn/nubia/k/a/a;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcn/nubia/k/a/b;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method
