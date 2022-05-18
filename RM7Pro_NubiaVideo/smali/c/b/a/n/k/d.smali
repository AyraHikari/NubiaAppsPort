.class public Lc/b/a/n/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/n/g<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lc/b/a/n/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/k/d;

    invoke-direct {v0}, Lc/b/a/n/k/d;-><init>()V

    sput-object v0, Lc/b/a/n/k/d;->a:Lc/b/a/n/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lc/b/a/n/k/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/n/k/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/n/k/d;->a:Lc/b/a/n/g;

    check-cast v0, Lc/b/a/n/k/d;

    return-object v0
.end method


# virtual methods
.method public a(Lc/b/a/n/i/k;II)Lc/b/a/n/i/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/k<",
            "TT;>;II)",
            "Lc/b/a/n/i/k<",
            "TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
