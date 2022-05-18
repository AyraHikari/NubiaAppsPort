.class public Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;
.super Ljava/lang/Object;
.source "TintViewInflater.java"


# static fields
.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 153
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-nez v1, :cond_0

    .line 155
    :try_start_0
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eqz p2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/view/View;

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 158
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 159
    sget-object v3, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 162
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    return-object v3

    :cond_1
    move-object v3, p1

    .line 155
    goto :goto_0

    .line 163
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 123
    const-string v1, "view"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "class"

    invoke-interface {p3, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 128
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 129
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object p3, v1, v3

    .line 131
    const/4 v1, -0x1

    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 133
    const-string v1, "android.widget."

    invoke-direct {p0, p2, v1}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 143
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v2, v3, v4

    .line 144
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v2, v3, v5

    :goto_0
    return-object v1

    .line 135
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p2, v1}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 143
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v2, v3, v4

    .line 144
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v2, v3, v5

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 144
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v2, v1, v5

    move-object v1, v2

    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v2, v3, v4

    .line 144
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v2, v3, v5

    throw v1
.end method


# virtual methods
.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "inheritContext"    # Z
    .param p6, "themeContext"    # Z

    .prologue
    const/4 v2, 0x1

    .line 67
    move-object v1, p3

    .line 68
    .local v1, "originalContext":Landroid/content/Context;
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater$1;-><init>(Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;)V

    .line 83
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 86
    :cond_0
    if-eqz p6, :cond_1

    .line 88
    invoke-static {p3, p4, v2, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object p3

    .line 92
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 113
    if-eq v1, p3, :cond_2

    .line 116
    invoke-direct {p0, p3, p2, p4}, Lcn/nubia/commonui/actionbar/internal/app/TintViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 119
    :goto_0
    return-object v2

    .line 94
    :pswitch_0
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;

    invoke-direct {v2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 96
    :pswitch_1
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;

    invoke-direct {v2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 98
    :pswitch_2
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/TintCheckBox;

    invoke-direct {v2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 100
    :pswitch_3
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;

    invoke-direct {v2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 102
    :pswitch_4
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/TintCheckedTextView;

    invoke-direct {v2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 104
    :pswitch_5
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/TintAutoCompleteTextView;

    invoke-direct {v2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 106
    :pswitch_6
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;

    invoke-direct {v2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 108
    :pswitch_7
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;

    invoke-direct {v2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 110
    :pswitch_8
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;

    invoke-direct {v2, p3, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 119
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
