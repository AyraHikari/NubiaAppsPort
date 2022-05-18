.class public Landroid/support/v8/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/RenderScript$a;,
        Landroid/support/v8/renderscript/RenderScript$b;,
        Landroid/support/v8/renderscript/RenderScript$c;,
        Landroid/support/v8/renderscript/RenderScript$ContextType;
    }
.end annotation


# static fields
.field static a:Z

.field static b:Z

.field static c:Ljava/lang/Object;

.field static d:Ljava/lang/reflect/Method;

.field static e:Ljava/lang/reflect/Method;

.field static f:Ljava/lang/Object;

.field static g:Z

.field private static t:I


# instance fields
.field h:I

.field i:I

.field j:Landroid/support/v8/renderscript/RenderScript$a;

.field k:Landroid/support/v8/renderscript/Element;

.field l:Landroid/support/v8/renderscript/Element;

.field m:Landroid/support/v8/renderscript/Element;

.field n:Landroid/support/v8/renderscript/Element;

.field o:Landroid/support/v8/renderscript/Element;

.field p:Landroid/support/v8/renderscript/Element;

.field q:Landroid/support/v8/renderscript/RenderScript$c;

.field r:Landroid/support/v8/renderscript/RenderScript$b;

.field private s:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/RenderScript;->f:Ljava/lang/Object;

    .line 77
    sput-boolean v1, Landroid/support/v8/renderscript/RenderScript;->g:Z

    .line 79
    sput v1, Landroid/support/v8/renderscript/RenderScript;->t:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->q:Landroid/support/v8/renderscript/RenderScript$c;

    .line 755
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->r:Landroid/support/v8/renderscript/RenderScript$b;

    .line 891
    if-eqz p1, :cond_0

    .line 892
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->s:Landroid/content/Context;

    .line 894
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    .prologue
    .line 968
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->a:Landroid/support/v8/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->a(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 920
    new-instance v0, Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 922
    invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    const-string v0, "RenderScript_jni"

    const-string v1, "RS native mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/e;->a(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    .line 958
    :goto_0
    return-object v0

    .line 926
    :cond_0
    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 927
    :try_start_0
    sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 929
    :try_start_1
    const-string v2, "dalvik.system.VMRuntime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 930
    const-string v3, "getRuntime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 931
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/support/v8/renderscript/RenderScript;->c:Ljava/lang/Object;

    .line 932
    const-string v3, "registerNativeAllocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/v8/renderscript/RenderScript;->d:Ljava/lang/reflect/Method;

    .line 933
    const-string v3, "registerNativeFree"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v8/renderscript/RenderScript;->e:Ljava/lang/reflect/Method;

    .line 934
    const/4 v2, 0x1

    sput-boolean v2, Landroid/support/v8/renderscript/RenderScript;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    :goto_1
    :try_start_2
    const-string v2, "RSSupport"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 941
    const-string v2, "rsjni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 942
    const/4 v2, 0x1

    sput-boolean v2, Landroid/support/v8/renderscript/RenderScript;->a:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 948
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 950
    const-string v1, "RenderScript_jni"

    const-string v2, "RS compat mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->nDeviceCreate()I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/RenderScript;->h:I

    .line 952
    iget v1, v0, Landroid/support/v8/renderscript/RenderScript;->h:I

    iget v2, p2, Landroid/support/v8/renderscript/RenderScript$ContextType;->d:I

    invoke-virtual {v0, v1, v7, p1, v2}, Landroid/support/v8/renderscript/RenderScript;->a(IIII)I

    move-result v1

    iput v1, v0, Landroid/support/v8/renderscript/RenderScript;->i:I

    .line 953
    iget v1, v0, Landroid/support/v8/renderscript/RenderScript;->i:I

    if-nez v1, :cond_2

    .line 954
    new-instance v0, Landroid/support/v8/renderscript/RSDriverException;

    const-string v1, "Failed to create RS context."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 935
    :catch_0
    move-exception v2

    .line 936
    :try_start_4
    const-string v2, "RenderScript_jni"

    const-string v3, "No GC methods"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/4 v2, 0x0

    sput-boolean v2, Landroid/support/v8/renderscript/RenderScript;->b:Z

    goto :goto_1

    .line 948
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 943
    :catch_1
    move-exception v0

    .line 944
    :try_start_5
    const-string v2, "RenderScript_jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading RS jni library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading RS jni library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 956
    :cond_2
    new-instance v1, Landroid/support/v8/renderscript/RenderScript$a;

    invoke-direct {v1, v0}, Landroid/support/v8/renderscript/RenderScript$a;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v1, v0, Landroid/support/v8/renderscript/RenderScript;->j:Landroid/support/v8/renderscript/RenderScript$a;

    .line 957
    iget-object v1, v0, Landroid/support/v8/renderscript/RenderScript;->j:Landroid/support/v8/renderscript/RenderScript$a;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript$a;->start()V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 982
    invoke-static {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->a(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method static a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 85
    sget v2, Landroid/support/v8/renderscript/RenderScript;->t:I

    if-nez v2, :cond_0

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    const-string v2, "debug.rs.forcecompat"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 88
    sput v0, Landroid/support/v8/renderscript/RenderScript;->t:I

    .line 93
    :cond_0
    :goto_0
    sget v2, Landroid/support/v8/renderscript/RenderScript;->t:I

    if-ne v2, v0, :cond_2

    .line 96
    :goto_1
    return v0

    .line 90
    :cond_1
    const/4 v2, -0x1

    sput v2, Landroid/support/v8/renderscript/RenderScript;->t:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 96
    goto :goto_1
.end method


# virtual methods
.method declared-synchronized a(II)I
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 538
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicCreate(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(IIII)I
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnContextCreate(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(IIIIZZI)I
    .locals 9

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 217
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeCreate(IIIIIZZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(IILandroid/graphics/Bitmap;I)I
    .locals 6

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 233
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(IIZI)I
    .locals 6

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 195
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate(IIIZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    if-eqz v0, :cond_0

    .line 188
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnObjDestroy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(IIF)V
    .locals 1

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 503
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarF(IIIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(III)V
    .locals 1

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 525
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarObj(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(IIII[B)V
    .locals 7

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 468
    if-nez p5, :cond_0

    .line 469
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :goto_0
    monitor-exit p0

    return-void

    .line 471
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(IIIII[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ILandroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 262
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(IILandroid/graphics/Bitmap;I)I
    .locals 6

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 239
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 158
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->rsnContextDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 792
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1011
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->c()V

    .line 1012
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextDeinitToClient(I)V

    .line 1013
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->j:Landroid/support/v8/renderscript/RenderScript$a;

    iput-boolean v1, v0, Landroid/support/v8/renderscript/RenderScript$a;->b:Z

    .line 1015
    :try_start_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->j:Landroid/support/v8/renderscript/RenderScript$a;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript$a;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->b()V

    .line 1020
    iput v1, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    .line 1022
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nDeviceDestroy(I)V

    .line 1023
    iput v1, p0, Landroid/support/v8/renderscript/RenderScript;->h:I

    .line 1024
    return-void

    .line 1016
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->i:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native nContextDeinitToClient(I)V
.end method

.method native nContextGetErrorMessage(I)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(I[I)I
.end method

.method native nContextInitToClient(I)V
.end method

.method native nContextPeekMessage(I[I)I
.end method

.method native nDeviceCreate()I
.end method

.method native nDeviceDestroy(I)V
.end method

.method native rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnContextCreate(IIII)I
.end method

.method native rsnContextDestroy(I)V
.end method

.method native rsnElementCreate(IIIZI)I
.end method

.method native rsnObjDestroy(II)V
.end method

.method native rsnScriptForEach(IIIII)V
.end method

.method native rsnScriptForEach(IIIII[B)V
.end method

.method native rsnScriptIntrinsicCreate(III)I
.end method

.method native rsnScriptSetVarF(IIIF)V
.end method

.method native rsnScriptSetVarObj(IIII)V
.end method

.method native rsnTypeCreate(IIIIIZZI)I
.end method
