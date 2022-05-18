.class public final Lc/b/a/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/c;


# static fields
.field private static final a:Lc/b/a/s/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/s/a;

    invoke-direct {v0}, Lc/b/a/s/a;-><init>()V

    sput-object v0, Lc/b/a/s/a;->a:Lc/b/a/s/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lc/b/a/s/a;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/s/a;->a:Lc/b/a/s/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method
