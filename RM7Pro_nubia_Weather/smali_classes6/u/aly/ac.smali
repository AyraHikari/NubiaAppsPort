.class public Lu/aly/ac;
.super Lu/aly/r;
.source "UUIDTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "idfa"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const-string v0, "idfa"

    invoke-direct {p0, v0}, Lu/aly/r;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lu/aly/ac;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
