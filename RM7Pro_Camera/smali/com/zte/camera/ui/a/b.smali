.class public Lcom/zte/camera/ui/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/zte/camera/ui/a/b;


# instance fields
.field private b:Lcom/zte/camera/ui/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/zte/camera/ui/a/b;
    .locals 1

    .line 12
    sget-object v0, Lcom/zte/camera/ui/a/b;->a:Lcom/zte/camera/ui/a/b;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/zte/camera/ui/a/b;

    invoke-direct {v0}, Lcom/zte/camera/ui/a/b;-><init>()V

    sput-object v0, Lcom/zte/camera/ui/a/b;->a:Lcom/zte/camera/ui/a/b;

    .line 15
    :cond_0
    sget-object v0, Lcom/zte/camera/ui/a/b;->a:Lcom/zte/camera/ui/a/b;

    return-object v0
.end method

.method private c()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/zte/camera/ui/a/b;->b()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/zte/camera/ui/a/b;->b:Lcom/zte/camera/ui/a/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 10

    .line 31
    invoke-direct {p0}, Lcom/zte/camera/ui/a/b;->c()V

    .line 32
    new-instance v9, Lcom/zte/camera/ui/a/a;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/zte/camera/ui/a/a;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    move-object v0, p0

    iput-object v9, v0, Lcom/zte/camera/ui/a/b;->b:Lcom/zte/camera/ui/a/c;

    .line 33
    invoke-virtual {v9}, Lcom/zte/camera/ui/a/c;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/zte/camera/ui/a/b;->b:Lcom/zte/camera/ui/a/c;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/zte/camera/ui/a/c;->d()V

    :cond_0
    return-void
.end method
