.class public final Lc/b/a/j$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/j$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lc/b/a/j;


# direct methods
.method constructor <init>(Lc/b/a/j;Lc/b/a/n/j/l;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/j/l<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/j$c;->c:Lc/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/b/a/j$c;->a:Lc/b/a/n/j/l;

    .line 3
    iput-object p3, p0, Lc/b/a/j$c;->b:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lc/b/a/j$c;)Lc/b/a/n/j/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/j$c;->a:Lc/b/a/n/j/l;

    return-object p0
.end method

.method static synthetic b(Lc/b/a/j$c;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/j$c;->b:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Lc/b/a/j$c$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lc/b/a/j$c<",
            "TA;TT;>.a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/j$c$a;

    invoke-direct {v0, p0, p1}, Lc/b/a/j$c$a;-><init>(Lc/b/a/j$c;Ljava/lang/Object;)V

    return-object v0
.end method
