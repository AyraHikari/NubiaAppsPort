.class Landroidx/constraintlayout/widget/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/d$b;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Landroidx/constraintlayout/widget/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$a;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Landroidx/constraintlayout/widget/d$a;->c:I

    .line 146
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 147
    sget-object v0, Landroidx/constraintlayout/widget/j$b;->eF:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 148
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 150
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 151
    sget v3, Landroidx/constraintlayout/widget/j$b;->eG:I

    if-ne v2, v3, :cond_0

    .line 152
    iget v3, p0, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->a:I

    goto :goto_1

    .line 153
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/j$b;->eH:I

    if-ne v2, v3, :cond_1

    .line 154
    iget v3, p0, Landroidx/constraintlayout/widget/d$a;->c:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/d$a;->c:I

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/widget/d$a;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/widget/d$a;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    const-string v3, "layout"

    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    new-instance v2, Landroidx/constraintlayout/widget/e;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/e;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/e;

    .line 160
    iget v3, p0, Landroidx/constraintlayout/widget/d$a;->c:I

    invoke-virtual {v2, p1, v3}, Landroidx/constraintlayout/widget/e;->a(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method a(Landroidx/constraintlayout/widget/d$b;)V
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/constraintlayout/widget/d$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
