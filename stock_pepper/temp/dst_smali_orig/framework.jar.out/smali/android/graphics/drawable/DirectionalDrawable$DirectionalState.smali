.class final Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "DirectionalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DirectionalDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectionalState"
.end annotation


# static fields
.field public static final DIRECTION_LTR:I = 0x1

.field public static final DIRECTION_RTL:I


# instance fields
.field private mCurrentDirection:I

.field private mLtrIndex:I

.field private mRtlIndex:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;Landroid/graphics/drawable/DirectionalDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    iput v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mLtrIndex:I

    iput v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mRtlIndex:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mCurrentDirection:I

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mLtrIndex:I

    iput v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mLtrIndex:I

    iget v0, p1, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mRtlIndex:I

    iput v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mRtlIndex:I

    iget v0, p1, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mCurrentDirection:I

    iput v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mCurrentDirection:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->bothDrawablesSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mCurrentDirection:I

    return v0
.end method

.method private bothDrawablesSet()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    iget v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mLtrIndex:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mRtlIndex:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mCurrentDirection:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mRtlIndex:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mLtrIndex:I

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/DirectionalDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/DirectionalDrawable;-><init>(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;Landroid/content/res/Resources;Landroid/graphics/drawable/DirectionalDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    new-instance v0, Landroid/graphics/drawable/DirectionalDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/DirectionalDrawable;-><init>(Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;Landroid/content/res/Resources;Landroid/graphics/drawable/DirectionalDrawable$1;)V

    return-object v0
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    iput p1, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mCurrentDirection:I

    return-void
.end method

.method public setLtrDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "draw"

    .prologue
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mLtrIndex:I

    return-void
.end method

.method public setRtlDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "draw"

    .prologue
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/DirectionalDrawable$DirectionalState;->mRtlIndex:I

    return-void
.end method
