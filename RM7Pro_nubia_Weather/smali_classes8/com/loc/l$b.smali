.class public final Lcom/loc/l$b;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/l$b$b;,
        Lcom/loc/l$b$a;
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:Lorg/json/JSONObject;

.field public g:Lcom/loc/l$b$a;

.field public h:Lcom/loc/l$b$b;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/l$b;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/l$b;->e:J

    return-void
.end method

.method static synthetic a(Lcom/loc/l$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/l$b;->i:Z

    return p1
.end method
