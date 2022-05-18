.class public Lc/b/a/r/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/r/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/r/g/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/r/g/c<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lc/b/a/r/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/r/g/e<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lc/b/a/r/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/r/g/d<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/r/g/e;

    invoke-direct {v0}, Lc/b/a/r/g/e;-><init>()V

    sput-object v0, Lc/b/a/r/g/e;->a:Lc/b/a/r/g/e;

    .line 2
    new-instance v0, Lc/b/a/r/g/e$a;

    invoke-direct {v0}, Lc/b/a/r/g/e$a;-><init>()V

    sput-object v0, Lc/b/a/r/g/e;->b:Lc/b/a/r/g/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b()Lc/b/a/r/g/e;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/r/g/e;->a:Lc/b/a/r/g/e;

    return-object v0
.end method

.method public static c()Lc/b/a/r/g/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/r/g/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/r/g/e;->a:Lc/b/a/r/g/e;

    return-object v0
.end method

.method public static d()Lc/b/a/r/g/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/r/g/d<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/r/g/e;->b:Lc/b/a/r/g/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lc/b/a/r/g/c$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
