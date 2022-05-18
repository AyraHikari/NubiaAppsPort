.class public Lcn/nubia/camera/clone/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/clone/j$a;
    }
.end annotation


# static fields
.field private static a:Lcn/nubia/camera/clone/j;


# instance fields
.field private b:Lcn/nubia/camera/clone/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcn/nubia/camera/clone/j;

    invoke-direct {v0}, Lcn/nubia/camera/clone/j;-><init>()V

    sput-object v0, Lcn/nubia/camera/clone/j;->a:Lcn/nubia/camera/clone/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcn/nubia/camera/clone/j$a;->a:Lcn/nubia/camera/clone/j$a;

    iput-object v0, p0, Lcn/nubia/camera/clone/j;->b:Lcn/nubia/camera/clone/j$a;

    return-void
.end method

.method public static a()Lcn/nubia/camera/clone/j;
    .locals 1

    .line 15
    sget-object v0, Lcn/nubia/camera/clone/j;->a:Lcn/nubia/camera/clone/j;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/clone/j$a;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/camera/clone/j;->b:Lcn/nubia/camera/clone/j$a;

    return-void
.end method

.method public b()Lcn/nubia/camera/clone/j$a;
    .locals 1

    .line 19
    iget-object v0, p0, Lcn/nubia/camera/clone/j;->b:Lcn/nubia/camera/clone/j$a;

    return-object v0
.end method
