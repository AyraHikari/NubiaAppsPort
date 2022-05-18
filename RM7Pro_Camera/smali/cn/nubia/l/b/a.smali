.class public abstract Lcn/nubia/l/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/l/b/d;


# instance fields
.field a:Lcn/nubia/l/a/b;

.field b:Landroid/net/Uri;

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcn/nubia/l/b/a;->a:Lcn/nubia/l/a/b;

    .line 15
    iput-object v0, p0, Lcn/nubia/l/b/a;->b:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcn/nubia/l/b/a;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/l/a/b;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/l/b/a;->a:Lcn/nubia/l/a/b;

    return-void
.end method
