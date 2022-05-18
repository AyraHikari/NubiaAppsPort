.class public Landroidx/constraintlayout/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Landroidx/constraintlayout/a/a/a;

.field public static c:[Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Landroidx/constraintlayout/a/a/a;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/a;-><init>()V

    sput-object v0, Landroidx/constraintlayout/a/a/a;->a:Landroidx/constraintlayout/a/a/a;

    const-string v0, "standard"

    const-string v1, "accelerate"

    const-string v2, "decelerate"

    const-string v3, "linear"

    .line 40
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/a/a/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identity"

    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/a/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a;->b:Ljava/lang/String;

    return-object v0
.end method
