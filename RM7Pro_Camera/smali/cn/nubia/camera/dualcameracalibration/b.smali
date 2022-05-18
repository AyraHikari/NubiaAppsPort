.class public Lcn/nubia/camera/dualcameracalibration/b;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# static fields
.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private final E:I

.field private final F:I

.field private G:Landroid/widget/Toast;

.field private H:Z

.field private I:Z

.field private J:Landroid/os/Handler;

.field private K:Landroid/app/ProgressDialog;

.field a:Landroid/content/BroadcastReceiver;

.field private b:Lcn/nubia/camera/dualcameracalibration/e;

.field private c:Lcn/nubia/camera/g/h;

.field private i:I

.field private j:Lcn/nubia/camera/k/x$b;

.field private k:Lcn/nubia/camera/k/x$b;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 149
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->b:Lcn/nubia/camera/dualcameracalibration/e;

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->c:Lcn/nubia/camera/g/h;

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->i:I

    .line 72
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->n:Ljava/lang/String;

    const/16 v2, 0x9

    .line 92
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    const/16 v2, 0xc

    .line 93
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    const/16 v2, 0xd

    .line 94
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    const/16 v2, 0x23

    .line 95
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    const/16 v2, 0x2f

    .line 96
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    const/16 v2, 0x13

    .line 97
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->E:I

    const/16 v2, 0xe

    .line 98
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->F:I

    .line 99
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->G:Landroid/widget/Toast;

    .line 101
    iput-boolean v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->H:Z

    .line 375
    iput-boolean v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->I:Z

    .line 499
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->a:Landroid/content/BroadcastReceiver;

    .line 627
    new-instance v1, Lcn/nubia/camera/dualcameracalibration/b$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/dualcameracalibration/b$5;-><init>(Lcn/nubia/camera/dualcameracalibration/b;)V

    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->J:Landroid/os/Handler;

    .line 640
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/dualcameracalibration/e;)V
    .locals 2

    .line 154
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->b:Lcn/nubia/camera/dualcameracalibration/e;

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->c:Lcn/nubia/camera/g/h;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->i:I

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->n:Ljava/lang/String;

    const/16 v1, 0x9

    .line 92
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    const/16 v1, 0xc

    .line 93
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    const/16 v1, 0xd

    .line 94
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    const/16 v1, 0x23

    .line 95
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    const/16 v1, 0x2f

    .line 96
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    const/16 v1, 0x13

    .line 97
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->E:I

    const/16 v1, 0xe

    .line 98
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->F:I

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->G:Landroid/widget/Toast;

    .line 101
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->H:Z

    .line 375
    iput-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->I:Z

    .line 499
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->a:Landroid/content/BroadcastReceiver;

    .line 627
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/b$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/dualcameracalibration/b$5;-><init>(Lcn/nubia/camera/dualcameracalibration/b;)V

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->J:Landroid/os/Handler;

    .line 640
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    .line 155
    iput-object p2, p0, Lcn/nubia/camera/dualcameracalibration/b;->b:Lcn/nubia/camera/dualcameracalibration/e;

    .line 156
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/b;->r()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/nubia/camera/dualcameracalibration/e;)Lcn/nubia/camera/dualcameracalibration/b;
    .locals 2

    .line 174
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/dualcameracalibration/b;-><init>(ILcn/nubia/camera/dualcameracalibration/e;)V

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .line 104
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.action.DualCalibrationForSale"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 105
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->i:I

    goto :goto_0

    :cond_0
    const-string v0, "isArcSoftRewrite"

    .line 107
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 108
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->i:I

    goto :goto_0

    .line 110
    :cond_1
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->i:I

    :goto_0
    const-string v0, "forEngineer"

    .line 114
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->H:Z

    .line 116
    iget p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->i:I

    const-string v0, "data/vendor/camera/arcsoft_calibration.bin"

    const-string v2, "/data/misc/camera/arcsoft_calibration.bin"

    const-string v3, "data/vendor/camera/camera_calibration.bin"

    if-ne p1, v1, :cond_4

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/ArcSoftDualCalibration/ForSale/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    iput-object v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    goto :goto_2

    .line 122
    :cond_2
    invoke-static {}, Lcn/nubia/camera/ba/a;->s()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    :goto_2
    const-string p1, "/system/etc/camera/golden_arcsoft_calibration.bin"

    .line 124
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->n:Ljava/lang/String;

    goto :goto_4

    .line 126
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/ArcSoftDualCalibration/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 129
    iput-object v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    goto :goto_4

    .line 131
    :cond_5
    invoke-static {}, Lcn/nubia/camera/ba/a;->s()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    .line 135
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "TakePictureSuccess.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/b;->o:Ljava/lang/String;

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Result_PASS.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/b;->p:Ljava/lang/String;

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Result_FAIL.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/b;->q:Ljava/lang/String;

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Result_FAIL_FOR_SALE_CALI.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/b;->r:Ljava/lang/String;

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Result_PASS_FOR_SALE_CALI.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/b;->s:Ljava/lang/String;

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/ArcSoftDualCalibration/EEPROM.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/b;->t:Ljava/lang/String;

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/ArcSoftDualCalibration/WriteFail.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/b;->u:Ljava/lang/String;

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/ArcSoftDualCalibration/WriteSuccess.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/b;->w:Ljava/lang/String;

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/ArcSoftDualCalibration/NoEepromFile.txt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/camera/dualcameracalibration/b;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/b;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/dualcameracalibration/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/dualcameracalibration/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 567
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 568
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 569
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->q:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 570
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 571
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".txt"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 575
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    if-eqz p2, :cond_1

    .line 577
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 578
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 579
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 580
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "File "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " should not exist.."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DualCalibrationFragment"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcn/nubia/camera/dualcameracalibration/b;->n:Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 383
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x800

    :try_start_2
    new-array v0, v0, [B

    .line 387
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const-string v6, "DualCalibrationFragment"

    .line 388
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "byteRead = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v4, v0, v2, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 393
    invoke-virtual {v3, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 394
    invoke-virtual {v3, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 395
    invoke-virtual {v3, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 406
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 414
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception p1

    .line 416
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_9

    :catch_4
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_9

    :catch_6
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 401
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_1

    .line 406
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_3

    :catch_7
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    if-eqz p1, :cond_3

    .line 414
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_7

    :catch_8
    move-exception p1

    goto :goto_6

    :catch_9
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 398
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_2

    .line 406
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_5

    :catch_a
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    if-eqz p1, :cond_3

    .line 414
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_7

    :catch_b
    move-exception p1

    .line 416
    :goto_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_7
    move v1, v2

    :goto_8
    return v1

    :catchall_2
    move-exception v0

    :goto_9
    if-eqz v4, :cond_4

    .line 406
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_a

    :catch_c
    move-exception v1

    .line 408
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_a
    if-eqz p1, :cond_5

    .line 414
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_b

    :catch_d
    move-exception p1

    .line 416
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 419
    :cond_5
    :goto_b
    throw v0
.end method

.method static synthetic b(Lcn/nubia/camera/dualcameracalibration/b;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/b;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/dualcameracalibration/b;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/b;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/dualcameracalibration/b;)I
    .locals 0

    .line 59
    iget p0, p0, Lcn/nubia/camera/dualcameracalibration/b;->i:I

    return p0
.end method

.method private d(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090313

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 250
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->O()Lcn/nubia/camera/dualcameracalibration/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/dualcameracalibration/i;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x3

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0f02ef

    .line 249
    invoke-virtual {p0, v2, v1}, Lcn/nubia/camera/dualcameracalibration/b;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090098

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 254
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f02ed

    .line 255
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f02ee

    .line 257
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/dualcameracalibration/b;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/b;->m()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/dualcameracalibration/b;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/b;->n()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/dualcameracalibration/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private g(Ljava/lang/String;)V
    .locals 3

    .line 559
    iget v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->i:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 560
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 562
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/dualcameracalibration/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    .line 597
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deleteFileIfExist] Delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DualCalibrationFragment"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/dualcameracalibration/b;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/dualcameracalibration/b;->J:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcn/nubia/camera/dualcameracalibration/b;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/camera/dualcameracalibration/b;->I:Z

    return p0
.end method

.method static synthetic k(Lcn/nubia/camera/dualcameracalibration/b;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/b;->p()V

    return-void
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 10

    .line 305
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->H:Z

    if-eqz v0, :cond_0

    const-string v0, "/sdcard/ArcSoftDualCalibration/ForSaleTest/back_left_image_4624_3472.NV21"

    .line 306
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->x:Ljava/lang/String;

    const-string v0, "/sdcard/ArcSoftDualCalibration/ForSaleTest/back_right_image_3264_2448.NV21"

    .line 307
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->y:Ljava/lang/String;

    .line 309
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->x:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    .line 310
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/dualcameracalibration/b;->y:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    .line 311
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    sget-object v8, Lcn/nubia/camera/dualcameracalibration/b;->t:Ljava/lang/String;

    iget-object v9, p0, Lcn/nubia/camera/dualcameracalibration/b;->n:Ljava/lang/String;

    .line 309
    invoke-static/range {v1 .. v9}, Lcn/nubia/thirdAlgo/ArcsoftCalibration;->processCalibrationWithResultString(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doSaleCalibration] mMainSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v3}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSubSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    .line 315
    invoke-virtual {v3}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualCalibrationFragment"

    .line 314
    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, " "

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 319
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resultStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", paramStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Pass"

    .line 322
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f02fa

    .line 323
    invoke-virtual {p0, v1}, Lcn/nubia/camera/dualcameracalibration/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/dualcameracalibration/b;->g(Ljava/lang/String;)V

    const-string v1, "Result_PASS_EEPROM_OK"

    .line 324
    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/dualcameracalibration/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Result_FAIL_USE_GOLDEN"

    .line 327
    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/dualcameracalibration/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->O()Lcn/nubia/camera/dualcameracalibration/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/dualcameracalibration/i;->b()I

    move-result v0

    const v1, 0x7f0f02f5

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    .line 330
    iput-boolean v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->I:Z

    .line 331
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0f02f4

    .line 333
    invoke-virtual {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->g(Ljava/lang/String;)V

    .line 335
    new-instance v0, Lcn/nubia/camera/am/a$a;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f02fe

    .line 336
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->c(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f02fb

    .line 337
    invoke-virtual {p0, v2}, Lcn/nubia/camera/dualcameracalibration/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->a(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    new-instance v2, Lcn/nubia/camera/dualcameracalibration/b$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/dualcameracalibration/b$2;-><init>(Lcn/nubia/camera/dualcameracalibration/b;)V

    .line 338
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void

    :cond_2
    const v0, 0x7f0f02f2

    .line 350
    invoke-virtual {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->g(Ljava/lang/String;)V

    .line 372
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/b;->o()V

    return-void

    .line 353
    :cond_3
    new-instance v0, Lcn/nubia/camera/am/a$a;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0f02f8

    .line 354
    invoke-virtual {v0, v5}, Lcn/nubia/camera/am/a$a;->c(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v5, 0x7f0f02f3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 356
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->O()Lcn/nubia/camera/dualcameracalibration/i;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/dualcameracalibration/i;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 357
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    .line 355
    invoke-virtual {p0, v5, v6}, Lcn/nubia/camera/dualcameracalibration/b;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->a(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    new-instance v2, Lcn/nubia/camera/dualcameracalibration/b$3;

    invoke-direct {v2, p0}, Lcn/nubia/camera/dualcameracalibration/b$3;-><init>(Lcn/nubia/camera/dualcameracalibration/b;)V

    .line 358
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void
.end method

.method private n()V
    .locals 15

    .line 425
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->H:Z

    if-eqz v0, :cond_0

    const-string v0, "/sdcard/ArcSoftDualCalibration/ForVerifyTest/back_left_image_4624_3472.NV21"

    .line 426
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->x:Ljava/lang/String;

    const-string v0, "/sdcard/ArcSoftDualCalibration/ForVerifyTest/back_right_image_3264_2448.NV21"

    .line 427
    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->y:Ljava/lang/String;

    .line 431
    :cond_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->k()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 432
    invoke-static {}, Lcn/nubia/camera/ba/a;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    .line 434
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/dualcameracalibration/b;->x:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/camera/dualcameracalibration/b;->y:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    iget v8, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    iget v9, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    iget v10, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    iget v11, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    iget v12, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    const/16 v13, 0x13

    const/16 v14, 0xe

    .line 433
    invoke-static/range {v1 .. v14}, Lcn/nubia/algorithm/camera/ArcsoftTriCameraVerify;->processVer12WithResultString(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 437
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    .line 439
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/dualcameracalibration/b;->x:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/camera/dualcameracalibration/b;->y:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    iget v8, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    iget v9, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    iget v10, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    iget v11, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    iget v12, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    const/16 v13, 0x13

    const/16 v14, 0xe

    .line 438
    invoke-static/range {v1 .. v14}, Lcn/nubia/algorithm/camera/ArcsoftCameraVerify669;->processVerWithResultString(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    .line 444
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/dualcameracalibration/b;->x:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/camera/dualcameracalibration/b;->y:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    iget v8, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    iget v9, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    iget v10, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    iget v11, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    iget v12, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    const/16 v13, 0x13

    const/16 v14, 0xe

    .line 443
    invoke-static/range {v1 .. v14}, Lcn/nubia/algorithm/camera/ArcsoftTriCameraVerify;->processVer23WithResultString(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    .line 450
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/camera/dualcameracalibration/b;->x:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/camera/dualcameracalibration/b;->y:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/camera/dualcameracalibration/b;->m:Ljava/lang/String;

    iget v8, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    iget v9, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    iget v10, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    iget v11, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    iget v12, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    const/16 v13, 0x13

    const/16 v14, 0xe

    .line 449
    invoke-static/range {v1 .. v14}, Lcn/nubia/algorithm/camera/ArcsoftDualCameraVerify;->processVerWithResultString(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)Ljava/lang/String;

    move-result-object v0

    .line 455
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doFactoryVerify] mMainSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v3}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSubSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    .line 456
    invoke-virtual {v3}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v2}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", EVG1_LIMIT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MAX1_LIMIT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ERROR_RANGE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", EVG2_LIMIT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MAX2_LIMIT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CHESSBOARD_WIDTH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CHESSBOARD_HEIGHT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DualCalibrationFragment"

    .line 455
    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, " "

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 462
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resultStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", paramStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Pass"

    .line 464
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "TEST PASS!"

    .line 465
    invoke-direct {p0, v1}, Lcn/nubia/camera/dualcameracalibration/b;->g(Ljava/lang/String;)V

    const-string v1, "Result_PASS"

    .line 466
    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/dualcameracalibration/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "TEST FAIL!"

    .line 468
    invoke-direct {p0, v1}, Lcn/nubia/camera/dualcameracalibration/b;->g(Ljava/lang/String;)V

    const-string v1, "Result_FAIL"

    .line 469
    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/dualcameracalibration/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private o()V
    .locals 3

    .line 475
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->G:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->m()V

    .line 481
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 482
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcn/nubia/camera/dualcameracalibration/b;->v:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcn/nubia/camera/dualcameracalibration/b;->q()V

    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "forSale"

    const/4 v2, 0x1

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DualCalibrationFragment"

    const-string v2, "Start calibration service for sale!"

    .line 491
    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private p()V
    .locals 4

    .line 496
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private q()V
    .locals 4

    .line 501
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcn/nubia/camera/dualcameracalibration/b$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/dualcameracalibration/b$4;-><init>(Lcn/nubia/camera/dualcameracalibration/b;)V

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->a:Landroid/content/BroadcastReceiver;

    .line 553
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "cn.nubia.calibrationdone"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->e()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 5

    .line 605
    invoke-static {}, Lcn/nubia/camera/ba/a;->x()Z

    move-result v0

    const/16 v1, 0x2f

    const/16 v2, 0x23

    const/16 v3, 0xd

    const/16 v4, 0xc

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 606
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    .line 607
    iput v4, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    .line 608
    iput v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    .line 609
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    .line 610
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    goto :goto_0

    .line 611
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 612
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    const/16 v0, 0xa

    .line 613
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    const/16 v0, 0xb

    .line 614
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    const/16 v0, 0x1e

    .line 615
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    const/16 v0, 0x28

    .line 616
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    goto :goto_0

    .line 617
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 618
    iput v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->z:I

    .line 619
    iput v4, p0, Lcn/nubia/camera/dualcameracalibration/b;->A:I

    .line 620
    iput v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->B:I

    .line 621
    iput v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->C:I

    .line 622
    iput v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->D:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    .line 263
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->d()V

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->b:Lcn/nubia/camera/dualcameracalibration/e;

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->c:Lcn/nubia/camera/g/h;

    new-instance v2, Lcn/nubia/camera/dualcameracalibration/b$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/dualcameracalibration/b$1;-><init>(Lcn/nubia/camera/dualcameracalibration/b;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/dualcameracalibration/e;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->b:Lcn/nubia/camera/dualcameracalibration/e;

    invoke-virtual {v0}, Lcn/nubia/camera/dualcameracalibration/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "DualCalibrationFragment"

    const-string v1, "ParametersSetter is null, just return.."

    .line 161
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->b:Lcn/nubia/camera/dualcameracalibration/e;

    invoke-virtual {v0}, Lcn/nubia/camera/dualcameracalibration/e;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/dualcameracalibration/d;

    .line 165
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/dualcameracalibration/d;->a(Ljava/lang/String;)Lcn/nubia/camera/k/x$b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    .line 166
    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/dualcameracalibration/d;->a(Ljava/lang/String;)Lcn/nubia/camera/k/x$b;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "back_left_image_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/dualcameracalibration/b;->j:Lcn/nubia/camera/k/x$b;

    .line 168
    invoke-virtual {v2}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".NV21"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->x:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "back_right_image_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    invoke-virtual {v3}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->k:Lcn/nubia/camera/k/x$b;

    .line 170
    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->y:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    const-string v1, "\u56de\u5199\u7b49\u5f85"

    .line 644
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    const-string v1, "\u56de\u5199\u4e2d,\u8bf7\u52ff\u89e6\u78b0\u624b\u673a..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 647
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 648
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 179
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "DualCalibrationFragment"

    const-string v0, "onCreate"

    .line 180
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance p1, Lcn/nubia/camera/g/h;

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b;->c:Lcn/nubia/camera/g/h;

    .line 183
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/b;->a(Landroid/content/Intent;)V

    .line 185
    sget-object p1, Lcn/nubia/camera/dualcameracalibration/b;->o:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 186
    sget-object p1, Lcn/nubia/camera/dualcameracalibration/b;->p:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 187
    sget-object p1, Lcn/nubia/camera/dualcameracalibration/b;->q:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 188
    sget-object p1, Lcn/nubia/camera/dualcameracalibration/b;->r:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    .line 189
    sget-object p1, Lcn/nubia/camera/dualcameracalibration/b;->s:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->d:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 199
    :cond_0
    iget v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const p3, 0x7f0c0030

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 202
    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/b;->d(Landroid/view/View;)V

    return-object p1

    .line 205
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 221
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->d:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 225
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 226
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->J:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 233
    iput-object v1, p0, Lcn/nubia/camera/dualcameracalibration/b;->K:Landroid/app/ProgressDialog;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcn/nubia/camera/dualcameracalibration/b;->d:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    return-void

    .line 215
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 216
    invoke-virtual {p0}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    return-void
.end method
