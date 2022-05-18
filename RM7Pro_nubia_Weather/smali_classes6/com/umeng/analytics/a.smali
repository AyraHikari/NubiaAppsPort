.class public Lcom/umeng/analytics/a;
.super Ljava/lang/Object;
.source "AnalyticsConstants.java"


# static fields
.field public static final A:Ljava/lang/String; = "userlevel"

.field public static final a:Ljava/lang/String; = "Android"

.field public static final b:Ljava/lang/String; = "Android"

.field public static final c:Ljava/lang/String; = "6.0.1"

.field public static final d:Ljava/lang/String; = "MobclickAgent"

.field public static e:Z = false

.field public static f:Ljava/lang/String; = null

.field public static g:Ljava/lang/String; = null

.field public static final h:Ljava/lang/String; = "http://alog.umeng.co/app_logs"

.field public static i:[Ljava/lang/String; = null

.field public static final j:J = 0x5265c00L

.field public static final k:J = 0x36ee80L

.field public static final l:Z = false

.field public static final m:I = 0x40

.field public static final n:I = 0x20

.field public static final o:I = 0x40

.field public static final p:I = 0x3c

.field public static final q:I = 0x168

.field public static final r:Ljava/lang/String; = "__ag_of"

.field public static final s:Ljava/lang/String; = "__data_size_of"

.field public static final t:Ljava/lang/String; = "__evp_file_of"

.field public static final u:Ljava/lang/String; = "__meta_ve_of"

.field public static v:J = 0x0L

.field public static final w:Ljava/lang/String; = "body"

.field public static final x:Ljava/lang/String; = "header"

.field public static final y:Ljava/lang/String; = "versioncode"

.field public static final z:Ljava/lang/String; = "versionname"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 18
    sput-boolean v3, Lcom/umeng/analytics/a;->e:Z

    .line 21
    const-string v0, "http://alogus.umeng.com/app_logs"

    sput-object v0, Lcom/umeng/analytics/a;->f:Ljava/lang/String;

    .line 22
    const-string v0, "http://alog.umeng.com/app_logs"

    sput-object v0, Lcom/umeng/analytics/a;->g:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/a;->i:[Ljava/lang/String;

    .line 57
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/umeng/analytics/a;->v:J

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/a;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "http://alog.umeng.co/app_logs"

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/a;->i:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
