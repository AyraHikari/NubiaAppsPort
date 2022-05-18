.class public Lcn/nubia/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i/c$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/i/i;

.field private b:Lcn/nubia/i/c$a;


# direct methods
.method public constructor <init>(Lcn/nubia/i/i;Lcn/nubia/i/c$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcn/nubia/i/c;->a:Lcn/nubia/i/i;

    .line 9
    iput-object p2, p0, Lcn/nubia/i/c;->b:Lcn/nubia/i/c$a;

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/i/i;
    .locals 1

    .line 13
    iget-object v0, p0, Lcn/nubia/i/c;->a:Lcn/nubia/i/i;

    return-object v0
.end method

.method public b()Lcn/nubia/i/c$a;
    .locals 1

    .line 17
    iget-object v0, p0, Lcn/nubia/i/c;->b:Lcn/nubia/i/c$a;

    return-object v0
.end method
