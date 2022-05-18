.class public Lcn/nubia/camera/ac/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcn/nubia/a/c;


# direct methods
.method public constructor <init>(ZLcn/nubia/a/c;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcn/nubia/camera/ac/c;->a:Z

    .line 25
    iput-object p2, p0, Lcn/nubia/camera/ac/c;->b:Lcn/nubia/a/c;

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/a/c;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/camera/ac/c;->b:Lcn/nubia/a/c;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcn/nubia/camera/ac/c;->a:Z

    return v0
.end method
