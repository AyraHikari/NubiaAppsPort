.class public Lc/c/a/f/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:J = 0xea60L

.field private static final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lc/c/a/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lc/c/a/f/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lc/c/a/f/h/b$a;->b:Lc/c/a/f/h/b$a;

    invoke-virtual {v1}, Lc/c/a/f/h/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x19000

    const-wide/32 v1, 0xea60

    invoke-direct {p0, v0, v1, v2}, Lc/c/a/f/a;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x19000

    iput v0, p0, Lc/c/a/f/a;->b:I

    iput p1, p0, Lc/c/a/f/a;->b:I

    sput-wide p2, Lc/c/a/f/a;->c:J

    new-instance p2, Lc/c/a/f/a$a;

    invoke-direct {p2, p0, p1}, Lc/c/a/f/a$a;-><init>(Lc/c/a/f/a;I)V

    iput-object p2, p0, Lc/c/a/f/a;->a:Lc/c/a/c/b;

    return-void
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lc/c/a/f/a;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/c/a/f/a;->a:Lc/c/a/c/b;

    invoke-virtual {v0, p1}, Lc/c/a/c/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lc/c/a/f/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/a/f/a;->a:Lc/c/a/c/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lc/c/a/c/b;->d(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
