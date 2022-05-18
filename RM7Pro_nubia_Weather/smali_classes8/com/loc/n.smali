.class public final Lcom/loc/n;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/n$b;,
        Lcom/loc/n$a;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String;

.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static volatile c:Z

.field public static d:Z

.field static e:Ljava/lang/String;

.field static f:Z

.field public static g:Lcom/loc/n$a;

.field static h:I

.field static i:Ljava/lang/String;

.field static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static volatile m:Z

.field private static n:Ljava/lang/String;

.field private static o:Z

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Z

.field private static w:Ljava/lang/String;

.field private static x:J

.field private static y:I

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->b:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/n;->c:Z

    sput-boolean v1, Lcom/loc/n;->d:Z

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->e:Ljava/lang/String;

    sput-boolean v1, Lcom/loc/n;->f:Z

    sput-object v2, Lcom/loc/n;->k:Ljava/lang/String;

    sput-boolean v1, Lcom/loc/n;->l:Z

    sput-object v2, Lcom/loc/n;->g:Lcom/loc/n$a;

    sput-boolean v1, Lcom/loc/n;->m:Z

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->n:Ljava/lang/String;

    sput-boolean v1, Lcom/loc/n;->o:Z

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->p:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->q:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->r:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->u:Ljava/lang/String;

    sput-boolean v1, Lcom/loc/n;->v:Z

    const/4 v0, -0x1

    sput v0, Lcom/loc/n;->h:I

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->w:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->A:Ljava/lang/String;

    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->H(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static B(Landroid/content/Context;)I
    .locals 5

    const/4 v1, 0x0

    sget v0, Lcom/loc/n;->y:I

    if-eqz v0, :cond_1

    sget v1, Lcom/loc/n;->y:I

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_1
    div-int/lit16 v1, v0, 0x400

    sput v1, Lcom/loc/n;->y:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v2, "/proc/meminfo"

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\s+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_2
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->I(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic D(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/loc/n;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static E(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Lcom/loc/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "utf-8"

    invoke-interface {v6, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    move v0, v3

    :goto_0
    if-eq v1, v4, :cond_3

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :pswitch_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_0

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTDID2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "UTDID"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_2
    if-eqz v0, :cond_0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    return-object v0

    :pswitch_3
    move v0, v3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :cond_4
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    :goto_4
    const-string v0, ""

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_5
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_7
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static F(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const-string v1, "IeGlhb21p"

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v0, "WY29tLmFuZHJvaWQuaWQuaW1wbC5JZFByb3ZpZGVySW1wbA"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "MZ2V0T0FJRA"

    invoke-static {v2}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/loc/n;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sput-boolean v6, Lcom/loc/n;->o:Z

    :cond_0
    :goto_1
    sget-object v0, Lcom/loc/n;->n:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "IaHVhd2Vp"

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "WY29tLnVvZGlzLm9wZW5kZXZpY2UuT1BFTklEU19TRVJWSUNF"

    invoke-static {v2}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UY29tLmh1YXdlaS5od2lk"

    invoke-static {v2}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/loc/n$b;

    invoke-direct {v2}, Lcom/loc/n$b;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/loc/n;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "oa"

    const-string v2, "hw"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sput-boolean v6, Lcom/loc/n;->o:Z

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    sget-object v0, Lcom/loc/n;->n:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_4
    const-string v0, "OPPO"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_3
.end method

.method private static G(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/loc/n;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/n;->w:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "open_common"

    const-string v1, "a1"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/loc/x;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "amap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->w:Ljava/lang/String;

    const-string v0, "open_common"

    invoke-static {p0, v0}, Lcom/loc/x;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "a1"

    sget-object v2, Lcom/loc/n;->w:Ljava/lang/String;

    invoke-static {v2}, Lcom/loc/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/loc/x;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget-object v0, Lcom/loc/n;->w:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->w:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/loc/n;->w:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v0, Lcom/loc/n;->w:Ljava/lang/String;

    goto :goto_0
.end method

.method private static H(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/loc/n;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    sget-object v1, Lcom/loc/n;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/n;->A:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/n;->A:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/loc/n;->M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "UZ2V0U3Vic2NyaWJlcklk"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/loc/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/loc/n;->A:Ljava/lang/String;

    :cond_4
    sget-object v0, Lcom/loc/n;->A:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->A:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/loc/n;->A:Ljava/lang/String;

    goto :goto_0
.end method

.method private static I(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/loc/n;->M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static J(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    const-string v1, "AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/loc/n;->K(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method private static K(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static L(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/loc/n;->M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method private static M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static N(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    sget-boolean v0, Lcom/loc/n;->c:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->O(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v5, Lcom/loc/n;->c:Z

    const-string v0, ""

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "MAAAAAAAAAAAAAAAAAAAAAA"

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0}, Lcom/loc/o;->b(Ljava/lang/String;)[B

    move-result-object v2

    const-string v0, "HYW1hcGFkaXVhbWFwYWRpdWFtYXBhZGl1YW1hcGFkaXU"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/loc/o;->a([B[B[B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v5, Lcom/loc/n;->c:Z

    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static O(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->P(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    const-string v0, "SU2hhcmVkUHJlZmVyZW5jZUFkaXU"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "RYW1hcF9kZXZpY2VfYWRpdQ"

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static P(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const-string v1, "LYW1hcF9kZXZpY2VfYWRpdQ"

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/loc/n;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KYmFja3Vwcw"

    invoke-static {v2}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    const-string v2, "MLmFkaXU"

    invoke-static {v2}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const-string v0, ""

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v2, v4, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x400

    :try_start_1
    new-array v4, v1, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    :goto_2
    invoke-static {v0}, Lcom/loc/n;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/loc/n;->a(Ljava/io/Closeable;)V

    :goto_3
    const-string v0, ""

    goto :goto_0

    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "SIw"

    invoke-static {v4}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "SIw"

    invoke-static {v4}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    aget-object v0, v0, v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1}, Lcom/loc/n;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/loc/n;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v1}, Lcom/loc/n;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/loc/n;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_4
    invoke-static {v1}, Lcom/loc/n;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/loc/n;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method private static Q(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v0, v3, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const-string v3, "SYW5kcm9pZC5vcy5zdG9yYWdlLlN0b3JhZ2VWb2x1bWU"

    invoke-static {v3}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "MZ2V0Vm9sdW1lTGlzdA"

    invoke-static {v5}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "FZ2V0UGF0aA"

    invoke-static {v5}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "DaXNSZW1vdmFibGU"

    invoke-static {v6}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_2

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/n;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/loc/n;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/n;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/loc/n;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/n;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/loc/n;->g:Lcom/loc/n$a;

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/loc/n;->m:Z

    if-eqz v0, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/n;->m:Z

    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/n$1;

    invoke-direct {v1, p0}, Lcom/loc/n$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/loc/n;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/n;->i:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/loc/n;->M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    sget v0, Lcom/loc/n;->h:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v3, "UZ2V0UGhvbmVDb3VudA="

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/loc/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/loc/n;->h:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    :try_start_2
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v3, "MZ2V0SW1laQ="

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/loc/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v0, 0x0

    sput v0, Lcom/loc/n;->h:I

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput v0, Lcom/loc/n;->h:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_3
    sput v0, Lcom/loc/n;->h:I

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    sget v0, Lcom/loc/n;->h:I

    if-ge v1, v0, :cond_6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    :cond_6
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    sput v0, Lcom/loc/n;->h:I

    const-string v0, ""

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->i:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v3, -0x1

    if-ge v2, v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    sub-int v0, v3, v2

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v4, v0, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/loc/n;->k:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/loc/n;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/n;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/loc/n;->g:Lcom/loc/n$a;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/loc/n;->g:Lcom/loc/n$a;

    invoke-interface {v0}, Lcom/loc/n$a;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->I(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/loc/n;->n:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, ""

    :try_start_0
    const-string v0, ""

    invoke-static {p0}, Lcom/loc/n;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    const/4 v0, 0x3

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method static c()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->L(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d()J
    .locals 6

    sget-wide v0, Lcom/loc/n;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/loc/n;->x:J

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    mul-long/2addr v0, v4

    const-wide/32 v4, 0x100000

    div-long/2addr v0, v4

    :goto_1
    add-long/2addr v0, v2

    sput-wide v0, Lcom/loc/n;->x:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-wide v0, Lcom/loc/n;->x:J

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    const-wide/32 v4, 0x100000

    div-long/2addr v0, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static e(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->J(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/n;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/n;->z:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->z:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->H(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic f()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/n;->o:Z

    return v0
.end method

.method private static g()Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    move-object v1, v0

    :cond_1
    if-nez v1, :cond_2

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/loc/n;->o:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/loc/n;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/n;->n:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/n$2;

    invoke-direct {v1, p0}, Lcom/loc/n$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/loc/n;->n:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/loc/n;->F(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/loc/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/loc/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/n;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->a:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/loc/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    sget-object v1, Lcom/loc/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/n;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/loc/n;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v0, Lcom/loc/n;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/loc/n;->a:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/loc/n;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/n;->q:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    const-class v0, Landroid/os/Build;

    const-string v1, "MZ2V0U2VyaWFs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/loc/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Landroid/os/Build;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Lcom/loc/n;->q:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    sget-object v0, Lcom/loc/n;->q:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/loc/n;->q:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/loc/n;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/n;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/loc/v;->a(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/loc/n;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/loc/n;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/loc/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x1

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    const/4 v0, 0x7

    if-ge v3, v0, :cond_6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/loc/n;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/loc/n;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/n;->r:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/n;->r:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->r:Ljava/lang/String;

    const-string v0, "YMDI6MDA6MDA6MDA6MDA6MDA"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/loc/n;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "YMDA6MDA6MDA6MDA6MDA6MDA"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/loc/n;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/loc/n;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    sget-object v0, Lcom/loc/n;->r:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->L(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->J(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"

    invoke-static {v1}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/loc/n;->K(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->r(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/loc/n;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/loc/n;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/n;->s:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/loc/n;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v0, Lcom/loc/n;->s:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/loc/n;->A:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/loc/n;->M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF"

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/loc/n;->K(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/loc/n;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/loc/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/loc/n;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/loc/n;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/loc/n;->G(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/loc/n;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    sget-object v1, Lcom/loc/n;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/n;->t:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/n;->t:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/loc/n;->M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "QZ2V0RGV2aWNlSWQ"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/loc/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "QZ2V0SW1laQ=="

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Lcom/loc/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/loc/n;->t:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/loc/n;->t:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    sget-object v0, Lcom/loc/n;->t:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/n;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/n;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/loc/n;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    sget-object v1, Lcom/loc/n;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/n;->u:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/n;->u:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/loc/n;->M(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "QZ2V0TWVpZA=="

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/loc/u;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/loc/n;->u:Ljava/lang/String;

    :cond_4
    sget-object v0, Lcom/loc/n;->u:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->u:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    sget-object v0, Lcom/loc/n;->u:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
