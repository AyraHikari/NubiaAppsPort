.class public Lc/b/a/q/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/q/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/q/b<",
        "TT;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lc/b/a/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/q/b<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/q/d;

    invoke-direct {v0}, Lc/b/a/q/d;-><init>()V

    sput-object v0, Lc/b/a/q/d;->a:Lc/b/a/q/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Lc/b/a/q/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/q/b<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/q/d;->a:Lc/b/a/q/b;

    return-object v0
.end method


# virtual methods
.method public a()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lc/b/a/n/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/f<",
            "TZ;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lc/b/a/n/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/b<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "TT;TZ;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
