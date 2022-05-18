.class public Lcn/nubia/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcn/nubia/a/c;->a:I

    .line 35
    iput p2, p0, Lcn/nubia/a/c;->b:I

    .line 36
    iput p3, p0, Lcn/nubia/a/c;->c:I

    .line 37
    iput p4, p0, Lcn/nubia/a/c;->d:I

    .line 38
    iput-object p5, p0, Lcn/nubia/a/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 45
    iget v0, p0, Lcn/nubia/a/c;->a:I

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    .line 52
    iget v0, p0, Lcn/nubia/a/c;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 59
    iget v0, p0, Lcn/nubia/a/c;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 66
    iget v0, p0, Lcn/nubia/a/c;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/nubia/a/c;->e:Ljava/lang/String;

    return-object v0
.end method
