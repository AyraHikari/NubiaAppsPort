.class public interface abstract Lc/b/a/n/j/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/b/a/n/j/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/j/j$a;

    invoke-direct {v0}, Lc/b/a/n/j/j$a;-><init>()V

    invoke-virtual {v0}, Lc/b/a/n/j/j$a;->a()Lc/b/a/n/j/j;

    move-result-object v0

    sput-object v0, Lc/b/a/n/j/e;->a:Lc/b/a/n/j/e;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
