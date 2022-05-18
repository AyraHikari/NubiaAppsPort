.class public Lc/b/a/f;
.super Lc/b/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/e<",
        "TModelType;TDataType;TResourceType;TResourceType;>;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final D:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "TModelType;TDataType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lc/b/a/g;Ljava/lang/Class;Lc/b/a/n/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/o/m;Lc/b/a/o/g;Lc/b/a/j$d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/g;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lc/b/a/n/j/l<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lc/b/a/o/m;",
            "Lc/b/a/o/g;",
            "Lc/b/a/j$d;",
            ")V"
        }
    .end annotation

    move-object v0, p4

    .line 1
    invoke-static {}, Lc/b/a/n/k/j/e;->b()Lc/b/a/n/k/j/c;

    move-result-object v1

    move-object v7, p2

    move-object v2, p5

    move-object/from16 v6, p6

    invoke-static {p2, p4, p5, v6, v1}, Lc/b/a/f;->v(Lc/b/a/g;Lc/b/a/n/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/k/j/c;)Lc/b/a/q/f;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lc/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lc/b/a/q/f;Ljava/lang/Class;Lc/b/a/g;Lc/b/a/o/m;Lc/b/a/o/g;)V

    move-object v1, p0

    .line 2
    iput-object v0, v1, Lc/b/a/f;->D:Lc/b/a/n/j/l;

    return-void
.end method

.method private static v(Lc/b/a/g;Lc/b/a/n/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/k/j/c;)Lc/b/a/q/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/g;",
            "Lc/b/a/n/j/l<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lc/b/a/n/k/j/c<",
            "TZ;TR;>;)",
            "Lc/b/a/q/f<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lc/b/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/q/b;

    move-result-object p0

    .line 2
    new-instance p2, Lc/b/a/q/e;

    invoke-direct {p2, p1, p4, p0}, Lc/b/a/q/e;-><init>(Lc/b/a/n/j/l;Lc/b/a/n/k/j/c;Lc/b/a/q/b;)V

    return-object p2
.end method
