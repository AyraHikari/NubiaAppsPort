.class public Lcn/nubia/commonui/widget/NubiaCharacterListView;
.super Landroid/view/View;
.source "NubiaCharacterListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;,
        Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    }
.end annotation


# instance fields
.field private final FAVORITE_CHAR:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private isChinese:Z

.field private mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

.field private mBottom:Landroid/widget/ImageView;

.field private mChoose:I

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mDiplayHeightPixels:I

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavFlag:Z

.field private mFlag:Z

.field protected mFullSet:[Ljava/lang/String;

.field private mHander:Landroid/os/Handler;

.field protected mHasFavFullSet:[Ljava/lang/String;

.field private mHighLightCharacterList:[Ljava/lang/String;

.field private mIsInCharcterListView:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mListView:Lcn/nubia/commonui/widget/MyListView;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNullSet:[Ljava/lang/String;

.field mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

.field private mPaintTextSize:F

.field private mPaintTxt:Landroid/graphics/Paint;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupText:Landroid/widget/TextView;

.field private mPopupXLoc:I

.field private mPreHeight:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mSingleLetterHeight:F

.field private mSingleMode:Z

.field private mTitle:Landroid/widget/TextView;

.field private mWindow:Landroid/view/WindowManager;

.field private mXPos:F

.field private mYPos:F

.field private temp:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const-string v0, "*"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->FAVORITE_CHAR:Ljava/lang/String;

    .line 37
    const-string v0, "NubiaWidget"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 39
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mNullSet:[Ljava/lang/String;

    .line 45
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 52
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 53
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 54
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 58
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    .line 79
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 121
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    .line 94
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-string v0, "*"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->FAVORITE_CHAR:Ljava/lang/String;

    .line 37
    const-string v0, "NubiaWidget"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 39
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mNullSet:[Ljava/lang/String;

    .line 45
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 52
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 53
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 54
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 58
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    .line 79
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 121
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    .line 89
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const-string v0, "*"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->FAVORITE_CHAR:Ljava/lang/String;

    .line 37
    const-string v0, "NubiaWidget"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 39
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mNullSet:[Ljava/lang/String;

    .line 45
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v6

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 52
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 53
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 54
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 58
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    .line 79
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 121
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    .line 84
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hideFloatingView()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method private drawFav(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawableResID"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 162
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    return-void
.end method

.method private drawFavorite(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 168
    sget v0, Lcn/nubia/commonui/R$drawable;->nubia_char_star_small:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->drawFav(Landroid/graphics/Canvas;I)V

    .line 169
    return-void
.end method

.method private getScreenWidth()I
    .locals 4

    .prologue
    .line 453
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 454
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 455
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 456
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method private hideFloatingView()V
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    return-void
.end method

.method private hidePopupWindow()V
    .locals 4

    .prologue
    .line 431
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/widget/NubiaCharacterListView$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$1;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$layout;->nubia_letterdialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, "popupContent":Landroid/view/View;
    sget v2, Lcn/nubia/commonui/R$id;->nubia_lettertext:I

    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 102
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 104
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 105
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$dimen;->nubia_character_popup_x_location:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupXLoc:I

    .line 108
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mDiplayHeightPixels:I

    .line 110
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 111
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "launguage":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    .line 113
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-eqz v2, :cond_0

    .line 114
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    .line 115
    new-instance v2, Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p1, v3}, Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

    .line 116
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->initFloatView(Landroid/content/Context;)V

    .line 117
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    :cond_0
    return-void
.end method

.method private initFloatView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    .line 460
    const-string v0, "window"

    .line 461
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    .line 462
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 463
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 464
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 465
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_character_list_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 467
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_character_window_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 469
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 474
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x14a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 475
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 476
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 477
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 478
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_floatging_view:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    .line 481
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaCharacterListView$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$2;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->my_list_view_2:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/MyListView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    .line 494
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/MyListView;->setOverScrollMode(I)V

    .line 495
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    .line 496
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->bottom:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    .line 498
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MyListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    new-instance v0, Lcn/nubia/commonui/widget/NubiaCharacterListView$4;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$4;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    .line 521
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaCharacterListView$5;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$5;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 530
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 531
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x2eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method

.method private isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "highLightCharacterList"    # [Ljava/lang/String;
    .param p2, "currentCharacter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 399
    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 403
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 404
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    const/4 v1, 0x1

    goto :goto_0

    .line 403
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private show(Ljava/lang/String;)V
    .locals 6
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 370
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    .line 371
    .local v1, "showText":Landroid/widget/TextView;
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$drawable;->nubia_char_popup_star:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 374
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 376
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    .line 375
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 377
    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 378
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :goto_2
    return-void

    .line 370
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "showText":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    goto :goto_0

    .line 372
    .restart local v1    # "showText":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$drawable;->nubia_char_float_star:I

    .line 373
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 380
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 382
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private showFloatingView(Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 535
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    if-nez v0, :cond_3

    .line 536
    new-instance v0, Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

    .line 537
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->initFloatView(Landroid/content/Context;)V

    .line 538
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 543
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 544
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_char_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 545
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    :goto_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;->setListView(Ljava/util/ArrayList;)V

    .line 552
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/MyListView;->setSelection(I)V

    .line 555
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->show(Ljava/lang/String;)V

    .line 556
    return-void

    .line 534
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    goto :goto_0

    .line 541
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 547
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_char_head:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 548
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private showPopupWindow(Ljava/lang/String;)V
    .locals 4
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->show(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 390
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x800003

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupXLoc:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x800005

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupXLoc:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 259
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 260
    .local v4, "y":F
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 261
    .local v3, "oldChoose":I
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 262
    .local v2, "listener":Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 263
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return v7

    .line 265
    :pswitch_0
    iput-boolean v7, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    .line 267
    iput-boolean v7, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFlag:Z

    .line 268
    if-eq v3, v1, :cond_2

    if-eqz v2, :cond_2

    .line 269
    if-ltz v1, :cond_2

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    .line 271
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "*"

    .line 272
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 274
    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v5, :cond_3

    .line 275
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    .line 281
    :goto_1
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v7, v5, :cond_2

    .line 282
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 277
    :cond_3
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->showFloatingView(Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :pswitch_1
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 291
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "*"

    .line 294
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 296
    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFlag:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 297
    invoke-direct {p0, v5, v6}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 299
    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v5, :cond_6

    .line 300
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    .line 306
    :cond_5
    :goto_2
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v7, v5, :cond_0

    .line 307
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 308
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 302
    :cond_6
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->showFloatingView(Ljava/lang/String;)V

    goto :goto_2

    .line 315
    :pswitch_2
    iput-boolean v8, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    .line 316
    iput-boolean v8, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFlag:Z

    .line 317
    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v5, :cond_8

    .line 318
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 322
    :goto_3
    if-eqz v2, :cond_7

    .line 323
    invoke-interface {v2, v9}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 325
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 320
    :cond_8
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hideFloatingView()V

    goto :goto_3

    .line 329
    :pswitch_3
    iput-boolean v8, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    .line 330
    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v5, :cond_a

    .line 331
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 336
    :goto_4
    if-eqz v2, :cond_9

    .line 337
    invoke-interface {v2, v9}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 339
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 333
    :cond_a
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hideFloatingView()V

    goto :goto_4

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected drawLetter(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->makeLettersFitSplitScreen(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTextSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 189
    iget-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    if-eqz v4, :cond_2

    .line 190
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getSingleHeight()F

    move-result v4

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleLetterHeight:F

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 194
    iget-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 195
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->drawFavorite(Landroid/graphics/Canvas;)V

    .line 193
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$color;->nubia_character_normal_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 200
    .local v2, "releaseTextColor":I
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mXPos:F

    .line 202
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleLetterHeight:F

    add-int/lit8 v5, v1, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mYPos:F

    .line 203
    iget-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFlag:Z

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 204
    invoke-direct {p0, v5, v6}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 206
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$color;->nubia_character_normal_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 208
    .local v0, "highlightTextColor":I
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    .end local v0    # "highlightTextColor":I
    :cond_4
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    if-ne v1, v4, :cond_5

    .line 211
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$color;->nubia_character_normal_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 213
    .local v3, "selectedTextColor":I
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    .end local v3    # "selectedTextColor":I
    :cond_5
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mXPos:F

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mYPos:F

    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getFavoriteLetter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "*"

    return-object v0
.end method

.method public getSingleHeight()F
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getSingleMode()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    return v0
.end method

.method public hideCharList()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 567
    :cond_0
    return-void
.end method

.method protected makeLettersFitSplitScreen(I)Z
    .locals 4
    .param p1, "currentHeight"    # I

    .prologue
    const/4 v3, 0x1

    .line 142
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    if-ne v1, p1, :cond_0

    .line 157
    :goto_0
    return v3

    .line 146
    :cond_0
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 147
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    aget-object v0, v1, v2

    .line 151
    .local v0, "preString":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_character_list_view_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTextSize:F

    .line 154
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 155
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setCurrentLetter(Ljava/lang/String;)V

    .line 156
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    goto :goto_0

    .line 149
    .end local v0    # "preString":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .restart local v0    # "preString":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 422
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    .line 426
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 428
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->drawLetter(Landroid/graphics/Canvas;)V

    .line 249
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 232
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    invoke-interface {v0, v2}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 235
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 236
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 239
    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

    .line 240
    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    .line 243
    :cond_1
    return-void
.end method

.method public setCurrentLetter(Ljava/lang/String;)V
    .locals 3
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 347
    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 353
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    .line 354
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    .line 355
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 361
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    :cond_3
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 363
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 359
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setFavFlag()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 173
    return-void
.end method

.method public setHighLightCharacterList([Ljava/lang/String;)V
    .locals 0
    .param p1, "characterList"    # [Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setLableNamesMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    .line 139
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .prologue
    .line 445
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 446
    return-void
.end method

.method public setSingleMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    if-ne v0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    .line 125
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 128
    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$MyAdapter;

    .line 129
    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    goto :goto_0
.end method
