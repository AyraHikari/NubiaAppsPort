.class public Lcn/nubia/videogenerator/c/b;
.super Lcn/nubia/videogenerator/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/c/b$a;
    }
.end annotation


# instance fields
.field private s:Lcn/nubia/videogenerator/c/b$a;

.field private t:Landroid/content/Context;

.field private u:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/nubia/videogenerator/c/c;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/videogenerator/c/b;->t:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcn/nubia/videogenerator/c/b;->u:Landroid/net/Uri;

    .line 29
    new-instance p1, Lcn/nubia/videogenerator/c/b$a;

    invoke-direct {p1, p0}, Lcn/nubia/videogenerator/c/b$a;-><init>(Lcn/nubia/videogenerator/c/b;)V

    iput-object p1, p0, Lcn/nubia/videogenerator/c/b;->s:Lcn/nubia/videogenerator/c/b$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/videogenerator/c/b;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/videogenerator/c/b;->t:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/videogenerator/c/b;)Landroid/net/Uri;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/videogenerator/c/b;->u:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/b;->s:Lcn/nubia/videogenerator/c/b$a;

    const-string v2, "VideoLocalSource"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcn/nubia/videogenerator/c/b;->d:Z

    return-void
.end method
