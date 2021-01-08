<template>
  <svg
    version="1.1"
    id="Layer_1"
    xmlns="http://www.w3.org/2000/svg"
    viewBox="0 0 357.3 161.94"
  >
    <path
      class="svg-bg"
      d="M345.59,161.44H11.71c-6.19,0-11.21-5.02-11.21-11.21V11.71C0.5,5.52,5.52,0.5,11.71,0.5h333.88
	c6.19,0,11.21,5.02,11.21,11.21v138.52C356.8,156.42,351.78,161.44,345.59,161.44z"
    />
    <g class="svgoverlay">
      <rect x="195" y="40" class="svgoverlay-bg" width="50" height="30" />
      <rect x="195" y="67.4" class="svgoverlay-line" width="50" height="3.2" />
    </g>
    <text class="main-text" transform="matrix(1 0 0 1 35.7768 64.2062)">
      <tspan x="0" y="0">If you’d told me year ago</tspan>
      <tspan x="0" y="43.2">...</tspan>
    </text>
    <g class="overlay">
      <rect
        class="overlay-bg"
        x="164.59"
        y="71.56"
        width="175.93"
        height="84.71"
      />
      <text class="overlay-text" transform="matrix(1 0 0 1 171.811 110.7012)">
        <tspan x="0" y="0" class="overlay-text">
          <tspan class="overlay-text-right">a</tspan>
          year
        </tspan>
      </text>
      <text transform="matrix(1 0 0 1 171.811 92.8967)" class="overlay-header">
        Add an article
      </text>
    </g>
    <g class="cursor">
      <g>
        <g>
          <path
            fill="#ffffff"
            d="M353.71,136.58l-26.4-18.33l2.26,32.06l7.08-10.49l6.54,11.51l4.44-2.52l-6.55-11.51L353.71,136.58z
				 M346.26,148.44l-2.69,1.53l-6.3-11.08l-0.55-0.97l-0.62,0.93l-5.74,8.49l-1.9-27.08l22.3,15.49l-10.23,0.58l-1.12,0.06
				l0.55,0.97L346.26,148.44z"
          />
          <polygon
            points="339.96,137.36 346.26,148.44 343.57,149.97 337.27,138.89 336.72,137.92 336.1,138.85 330.36,147.34 
				328.46,120.26 350.76,135.75 340.53,136.33 339.41,136.39 			"
          />
        </g>
      </g>
    </g>
  </svg>
</template>

<script>
export default {
  name: "animation1"
};
</script>

<style lang="scss" scoped>
$gray: #eaeaea;
$grayDark: #848484;
$yellow: #fdf6e1;
$yellowDarker: #fedc91;
$animation-duration: 5s;
$transition: cubic-bezier(0.25, 0.46, 0.45, 0.94);

body {
  display: flex;
  align-items: center;
  justify-content: center;
}
svg {
  margin-top: 5%;
  width: 420px;
}
.svg-bg {
  fill: #ffffff;
  stroke: $gray;
  stroke-miterlimit: 10;
  filter: drop-shadow(0 0 5px red);
}
.main-text {
  font-family: "IBMPlexSans-Medium";
  font-size: 24px;
}
.svgoverlay {
  animation: svgoverlay-animation $transition $animation-duration infinite;
  &-bg {
    fill: $yellow;
  }
  &-line {
    fill: $yellowDarker;
  }
}
.overlay {
  animation: overlay-animation $transition $animation-duration infinite;
  &-bg {
    fill: #ffffff;
    stroke: $gray;
  }
  &-header {
    font-family: "IBMPlexSans-Medium";
    font-size: 15px;
    fill: $grayDark;
  }
  &-text {
    font-family: "IBMPlexSans";
    font-size: 15px;
    font-weight: bold;
    &-right {
      font-family: "IBMPlexSans";
      font-size: 15px;
      font-weight: bold;
      fill: green;
    }
  }
}
.cursor {
  animation: cursor-animation $transition $animation-duration infinite;
}
@keyframes cursor-animation {
  0%,
  30% {
    transform: translate(0, 0);
  }
  40%,
  100% {
    transform: translate(-100px, -70px);
  }
}
@keyframes svgoverlay-animation {
  0%,
  35% {
    opacity: 0;
  }
  36%,
  100% {
    opacity: 1;
  }
}
@keyframes overlay-animation {
  0%,
  35% {
    transform: translateY(-20px);
    opacity: 0;
    height: 0;
  }
  38%,
  100% {
    transform: translateY(0);
    opacity: 1;
    height: 100%;
  }
}
</style>
